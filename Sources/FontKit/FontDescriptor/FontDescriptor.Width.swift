//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

// Type: FontDescriptor.Width

extension FontDescriptor {
    public struct Width: RawRepresentable {

        // Protocol: RawRepresentable

        // Exposed

        public typealias RawValue = Float64

        public init(rawValue: RawValue) {
            if rawValue.isNaN {
                self.rawValue = 0
            } else if rawValue < -1 {
                self.rawValue = -1
            } else if rawValue > 1 {
                self.rawValue = 1
            } else {
                self.rawValue = rawValue
            }
        }

        public let rawValue: RawValue
    }
}

// Topic: Standard

extension FontDescriptor.Width {

    // Exposed

    public static let regular = Self(rawValue: 0)
}
