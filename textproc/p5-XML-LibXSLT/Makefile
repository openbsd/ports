# $OpenBSD: Makefile,v 1.49 2016/11/08 14:47:22 sthen Exp $

COMMENT =		interface to the GNOME libxslt library

DISTNAME =		XML-LibXSLT-1.95
REVISION =		1

CATEGORIES =		textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c exslt>=7 gcrypt gpg-error lzma m perl pthread xml2>=6
WANTLIB += xslt>=1 z

MODULES =		cpan devel/gettext
RUN_DEPENDS =		textproc/p5-XML-LibXML>=1.70
LIB_DEPENDS =		textproc/libxml \
			textproc/libxslt>1.1.27
TEST_DEPENDS =		devel/p5-Test-Pod \
			devel/p5-Test-TrailingSpace

.include <bsd.port.mk>
