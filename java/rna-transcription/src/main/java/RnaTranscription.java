import java.util.Arrays;
import java.util.HashMap;
import java.util.stream.Collectors;

public class RnaTranscription {
  public String transcribe(String dnaStrand) {
    if (dnaStrand == "") return "";
    HashMap<String, String> translator = new HashMap<String, String>();
    translator.put("G", "C");
    translator.put("C", "G");
    translator.put("T", "A");
    translator.put("A", "U");
    return Arrays.stream(dnaStrand.split(""))
        .map(c -> translator.get(c))
        .collect(Collectors.joining(""));
  }
}
