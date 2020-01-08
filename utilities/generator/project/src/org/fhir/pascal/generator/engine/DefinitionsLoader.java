package org.fhir.pascal.generator.engine;

import java.io.IOException;

import org.hl7.fhir.r5.formats.JsonParser;
import org.hl7.fhir.r5.model.CapabilityStatement;
import org.hl7.fhir.r5.model.CodeSystem;
import org.hl7.fhir.r5.model.CompartmentDefinition;
import org.hl7.fhir.r5.model.ConceptMap;
import org.hl7.fhir.r5.model.OperationDefinition;
import org.hl7.fhir.r5.model.Resource;
import org.hl7.fhir.r5.model.SearchParameter;
import org.hl7.fhir.r5.model.StructureDefinition;
import org.hl7.fhir.r5.model.ValueSet;
import org.hl7.fhir.utilities.cache.NpmPackage;

public class DefinitionsLoader {

  public static Definitions load(NpmPackage npm) throws IOException {
    Definitions res = new Definitions();
    
    for (String t : npm.listResources("CodeSystem")) {
      res.getCodeSystems().see((CodeSystem) load(npm, t));
    }
    for (String t : npm.listResources("ValueSet")) {
      res.getValuesets().see((ValueSet) load(npm, t));
    }
    for (String t : npm.listResources("ConceptMap")) {
      res.getConceptMaps().see((ConceptMap) load(npm, t));
    }
    for (String t : npm.listResources("CapabilityStatement")) {
      res.getStatements().see((CapabilityStatement) load(npm, t));
    }
    for (String t : npm.listResources("StructureDefinition")) {
      res.getStructures().see((StructureDefinition) load(npm, t));
    }
    for (String t : npm.listResources("OperationDefinition")) {
      res.getOperations().see((OperationDefinition) load(npm, t));
    }
    for (String t : npm.listResources("SearchParameter")) {
      res.getSearchParams().see((SearchParameter) load(npm, t));
    }
    for (String t : npm.listResources("CompartmentDefinition")) {
      res.getCompartments().see((CompartmentDefinition) load(npm, t));
    }
    return res;
  }

  public static Resource load(NpmPackage npm, String t) {
    try {
      return new JsonParser().parse(npm.loadResource(t));
    } catch (Exception e) {
      throw new Error("Error reading "+t+": "+e.getMessage(), e);
    }
  }
}
