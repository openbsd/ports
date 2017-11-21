# $OpenBSD: Makefile,v 1.50 2017/11/21 00:13:04 naddy Exp $

COMMENT =		interface to the GNOME libxslt library

DISTNAME =		XML-LibXSLT-1.95
REVISION =		2

CATEGORIES =		textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  c exslt>=7 gcrypt gpg-error iconv intl lzma m perl pthread
WANTLIB += xml2>=6 xslt>=1 z

MODULES =		cpan
RUN_DEPENDS =		textproc/p5-XML-LibXML>=1.70
LIB_DEPENDS =		textproc/libxml \
			textproc/libxslt>1.1.27
TEST_DEPENDS =		devel/p5-Test-Pod \
			devel/p5-Test-TrailingSpace

.include <bsd.port.mk>
