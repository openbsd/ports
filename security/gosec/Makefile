COMMENT =	security checker for Go projects

MODGO_MODNAME =	github.com/securego/gosec/v2
MODGO_VERSION =	v2.21.2

DISTNAME =	gosec-${MODGO_VERSION}

# https://github.com/securego/gosec
HOMEPAGE =	https://securego.io/

CATEGORIES =	security devel

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go

MODGO_LDFLAGS =	-X main.Version=${MODGO_VERSION:S/v//}

# === RUN   TestRules
# Running Suite: Rules Suite
# FAIL! -- 36 Passed | 7 Failed | 0 Pending | 0 Skipped
# Summarizing 7 Failures:
# [FAIL] gosec rules report correct errors for all samples [It] should detect of ssh.InsecureIgnoreHostKey function
# github.com/securego/gosec/v2/rules/rules_test.go:41
# [FAIL] gosec rules report correct errors for all samples [It] should detect sql injection via format strings
# github.com/securego/gosec/v2/rules/rules_test.go:41
# [FAIL] gosec rules report correct errors for all samples [It] should detect command execution
# github.com/securego/gosec/v2/rules/rules_test.go:41
# [FAIL] gosec rules report correct errors for all samples [It] should detect weak crypto algorithms
# github.com/securego/gosec/v2/rules/rules_test.go:41
# [FAIL] gosec rules report correct errors for all samples [It] should detect weak crypto algorithms
# github.com/securego/gosec/v2/rules/rules_test.go:41
# [FAIL] gosec rules report correct errors for all samples [It] should detect blocklisted imports - MD4
# github.com/securego/gosec/v2/rules/rules_test.go:41
# [FAIL] gosec rules report correct errors for all samples [It] should detect blocklisted imports - RIPEMD160
# github.com/securego/gosec/v2/rules/rules_test.go:41
do-test:
	cd ${WRKSRC} && ${MODGO_TEST_CMD} ./...

.include "modules.inc"

.include <bsd.port.mk>
