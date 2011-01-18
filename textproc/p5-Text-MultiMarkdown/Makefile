# $OpenBSD: Makefile,v 1.4 2011/01/18 09:54:15 okan Exp $

COMMENT =	convert MultiMarkdown syntax to (X)HTML

DISTNAME =	Text-MultiMarkdown-1.000033
CATEGORIES =	textproc www
MODULES =	cpan
USE_GROFF =	Yes

MAINTAINER =	Okan Demirmen <okan@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes


RUN_DEPENDS =	textproc/p5-Text-Markdown

MAKE_ENV =	TEST_POD=Yes \
		TEST_SPELLING=Yes

REGRESS_DEPENDS =	devel/p5-Test-Spelling \
			devel/p5-Test-Differences \
			www/p5-HTML-Tidy

.include <bsd.port.mk>
