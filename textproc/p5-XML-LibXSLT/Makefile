# $OpenBSD: Makefile,v 1.39 2010/11/20 19:56:50 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	fast XSLT module for perl

MODULES=	cpan devel/gettext

DISTNAME=	XML-LibXSLT-1.68
REVISION=	3
CATEGORIES=	textproc
USE_GROFF =	Yes

HOMEPAGE=	http://www.axkit.org/

RUN_DEPENDS=	textproc/p5-XML-LibXML>=1.60
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	textproc/libxml \
		textproc/libxslt

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c gcrypt gpg-error m util z xml2>=6 xslt>=1 exslt>=7

.include <bsd.port.mk>
