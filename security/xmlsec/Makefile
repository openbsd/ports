# $OpenBSD: Makefile,v 1.2 2002/11/13 19:07:36 naddy Exp $

COMMENT=	"XML security library"

VERSION=	0.0.10
DISTNAME=	xmlsec-${VERSION}
CATEGORIES=	security

HOMEPAGE=	http://www.aleksey.com/xmlsec/

MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# MIT Licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.aleksey.com/xmlsec/download/

MODULES=	iconv
LIB_DEPENDS=	xslt.1::textproc/libxslt

CONFIGURE_STYLE= gnu

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmlsec
	 cp -R ${WRKSRC}/docs/* ${PREFIX}/share/doc/xmlsec

.include <bsd.port.mk>
