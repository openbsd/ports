# $OpenBSD: Makefile,v 1.47 2016/07/06 21:06:21 sthen Exp $

COMMENT =		interface to the GNOME libxslt library

DISTNAME =		XML-LibXSLT-1.94
REVISION =		0

CATEGORIES =		textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c gcrypt gpg-error m perl pthread z xml2>=6 xslt>=1 exslt>=7

MODULES =		cpan devel/gettext
RUN_DEPENDS =		textproc/p5-XML-LibXML>=1.70
LIB_DEPENDS =		textproc/libxml \
			textproc/libxslt>1.1.27
TEST_DEPENDS =		devel/p5-Test-Pod \
			devel/p5-Test-TrailingSpace

.include <bsd.port.mk>
