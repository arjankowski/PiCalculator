import Foundation

public class PiCalculator {
    
    // Leibniz series: π = 4 * (1 - 1/3 + 1/5 - 1/7 + ...)
    public static func calculatePiLeibniz(iterations: Int) -> Double {
        var pi: Double = 0.0
        var sign: Double = 1.0
        
        for i in 0..<iterations {
            let term = 1.0 / Double(2 * i + 1)
            pi += sign * term
            sign *= -1 // alternate signs
        }
        
        return pi * 4.0
    }
    
    // Monte Carlo method: π ≈ 4 * (points inside circle / total points)
    public static func calculatePiMonteCarlo(samples: Int) -> Double {
        var insideCircle = 0
        
        for _ in 0..<samples {
            let x = Double.random(in: 0...1)
            let y = Double.random(in: 0...1)
            
            if x * x + y * y <= 1 {
                insideCircle += 1
            }
        }
        
        return 4.0 * Double(insideCircle) / Double(samples)
    }
}
