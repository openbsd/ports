# $OpenBSD: Makefile,v 1.2 2014/05/08 17:10:10 zhuk Exp $
#
# Check for @exec/@unexec-delete of glib-compile-schemas
# when dependency is correct.

DISTNAME =		test-12

COMMENT-main =		test 12, correct handling
COMMENT-exec =		test 12, extra exec line
COMMENT-unexec =	test 12, extra unexec-delete line
COMMENT-noexec =	test 12, missing exec line
COMMENT-nounexec =	test 12, missing unexec-delete line
COMMENT-wrong =		test 12, wrong lines
COMMENT-nodep =		test 12, no run-time dependency

MULTI_PACKAGES =	-main -exec -unexec -noexec -nounexec -wrong -nodep
MODULES =		devel/dconf
RUN_DEPENDS-nodep =

.include <bsd.port.mk>
