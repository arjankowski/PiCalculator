import Foundation

public class EulerCalculator {
    
    // Calculate Euler's number using a series expansion
    public static func calculateE(terms: Int) -> Double {
        var e: Double = 0.0
        var factorial: Double = 1.0
        
        for n in 0..<terms {
            if n > 0 { factorial *= Double(n) }
            e += 1.0 / factorial
        }
        
        return e
    }
}
