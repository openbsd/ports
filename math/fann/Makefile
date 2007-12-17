# $OpenBSD: Makefile,v 1.1.1.1 2007/12/17 20:42:00 jasper Exp $

COMMENT=		Fast Artificial Neural Network Library

DISTNAME=		fann-2.1.0beta
SHARED_LIBS +=  floatfann            0.0      # .2.1
SHARED_LIBS +=  doublefann           0.0      # .2.1
SHARED_LIBS +=  fixedfann            0.0      # .2.1
SHARED_LIBS +=  fann                 0.0      # .2.1
CATEGORIES=		math devel

HOMEPAGE=		http://leenissen.dk/fann/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fann/}
EXTRACT_SUFX=		.zip

WRKDIST=		${WRKDIR}/fann-2.1.0

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fann
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/fann

.include <bsd.port.mk>
