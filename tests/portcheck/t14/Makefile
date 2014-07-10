# $OpenBSD: Makefile,v 1.1 2014/07/10 10:04:34 zhuk Exp $
#
# Check for both stdc++ in WANTLIB and gcc4 in MODULES

DISTNAME =		test-14

COMMENT-main =		test 14, no stdc++
COMMENT-foo =		test 14, contains stdc++

WANTLIB-main =		c m pthread z
WANTLIB-foo =		m stdc++ z

MULTI_PACKAGES =	-main -foo

MODULES =		gcc4

.include <bsd.port.mk>
