# $OpenBSD: Makefile,v 1.2 2003/05/05 03:37:09 margarida Exp $

COMMENT=		"modular log analyzer"

DISTNAME=		modlogan-0.8.7
CATEGORIES=		sysutils www

HOMEPAGE=		http://jan.kneschke.de/projects/modlogan

MAINTAINER=		Michael Coulter <mjc@bitz.ca>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://jan.kneschke.de/projects/modlogan/download/

LIB_DEPENDS=	expat.3::textproc/expat \
		gd.18::graphics/gd \
		pcre::devel/pcre \
		adns.1::net/adns

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --libdir=${PREFIX}/lib/modlogan
CONFIGURE_ENV += LOCALBASE="${LOCALBASE}" \
		 LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=	YES

EXAMPLES=	doc/*.conf doc/*-dist
DOCS=		doc/*.txt 

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/modlogan
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/modlogan
	cd ${WRKSRC} && ${INSTALL_DATA} ${EXAMPLES} \
	  ${PREFIX}/share/examples/modlogan
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} \
	  ${PREFIX}/share/doc/modlogan

.include <bsd.port.mk>
