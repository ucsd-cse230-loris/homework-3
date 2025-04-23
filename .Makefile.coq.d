Logic.vo Logic.glob Logic.v.beautified Logic.required_vo: Logic.v ./Tactics.vo
Logic.vio: Logic.v ./Tactics.vio
Logic.vos Logic.vok Logic.required_vos: Logic.v ./Tactics.vos
LogicTest.vo LogicTest.glob LogicTest.v.beautified LogicTest.required_vo: LogicTest.v Logic.vo
LogicTest.vio: LogicTest.v Logic.vio
LogicTest.vos LogicTest.vok LogicTest.required_vos: LogicTest.v Logic.vos
IndProp.vo IndProp.glob IndProp.v.beautified IndProp.required_vo: IndProp.v Logic.vo
IndProp.vio: IndProp.v Logic.vio
IndProp.vos IndProp.vok IndProp.required_vos: IndProp.v Logic.vos
IndPropTest.vo IndPropTest.glob IndPropTest.v.beautified IndPropTest.required_vo: IndPropTest.v IndProp.vo
IndPropTest.vio: IndPropTest.v IndProp.vio
IndPropTest.vos IndPropTest.vok IndPropTest.required_vos: IndPropTest.v IndProp.vos
