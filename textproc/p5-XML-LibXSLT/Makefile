# $OpenBSD: Makefile,v 1.44 2015/07/02 09:32:16 bluhm Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to the GNOME libxslt library

MODULES=	cpan devel/gettext

DISTNAME=	XML-LibXSLT-1.94
CATEGORIES=	textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

RUN_DEPENDS=	textproc/p5-XML-LibXML>=1.70
LIB_DEPENDS=	textproc/libxml \
		textproc/libxslt>1.1.27
TEST_DEPENDS =	devel/p5-Test-Pod \
		devel/p5-Test-TrailingSpace

# perl_5
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c gcrypt gpg-error m util z xml2>=6 xslt>=1 exslt>=7

.include <bsd.port.mk>
