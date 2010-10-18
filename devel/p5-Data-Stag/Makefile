# $OpenBSD: Makefile,v 1.2 2010/10/18 17:47:58 espie Exp $

COMMENT =		structured tags datastructures

DISTNAME =		Data-Stag-0.11
CATEGORIES =		devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan

RUN_DEPENDS =		::devel/p5-Graph \
			::devel/p5-IO-String \
			::devel/p5-MLDBM \
			::graphics/p5-GD \
			::textproc/p5-XML-LibXSLT \
			::textproc/p5-Libxml \
			::x11/p5-Tk

.include <bsd.port.mk>
