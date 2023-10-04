// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// Copyright 2023 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation

/// Tuning tasks that create tuned models.
public struct TuningTask: Codable {
  /// Dataset for training or validation.
  public var trainingData: Dataset?
  /// Output only. The timestamp when tuning this model completed.
  public var completeTime: String?
  /// Output only. The timestamp when tuning this model started.
  public var startTime: String?
  /// Output only. Metrics collected during tuning.
  public var snapshots: [TuningSnapshot]?
  /// Hyperparameters controlling the tuning process.
  public var hyperparameters: Hyperparameters?

  public init(trainingData: Dataset? = nil, completeTime: String? = nil, startTime: String? = nil, snapshots: [TuningSnapshot]? = nil, hyperparameters: Hyperparameters? = nil) {
    self.trainingData = trainingData
    self.completeTime = completeTime
    self.startTime = startTime
    self.snapshots = snapshots
    self.hyperparameters = hyperparameters
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.trainingData = try values.decodeIfPresent(Dataset.self, forKey: "trainingData")
    self.completeTime = try values.decodeIfPresent(String.self, forKey: "completeTime")
    self.startTime = try values.decodeIfPresent(String.self, forKey: "startTime")
    self.snapshots = try values.decodeIfPresent([TuningSnapshot].self, forKey: "snapshots")
    self.hyperparameters = try values.decodeIfPresent(Hyperparameters.self, forKey: "hyperparameters")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(trainingData, forKey: "trainingData")
    try values.encodeIfPresent(completeTime, forKey: "completeTime")
    try values.encodeIfPresent(startTime, forKey: "startTime")
    try values.encodeIfPresent(snapshots, forKey: "snapshots")
    try values.encodeIfPresent(hyperparameters, forKey: "hyperparameters")
  }
}