import { Definitions } from "./types";

export const generateModels = (definitions: Definitions) => {
  let code = `library models;\n`;
  code += `export 'client_extension.dart';\n`;
  for (let tableName in definitions) {
    tableName = tableName.toLowerCase();
    code += `export '${tableName}.dart';\n`;
  }
  return code;
};
