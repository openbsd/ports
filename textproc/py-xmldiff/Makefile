# $OpenBSD: Makefile,v 1.3 2011/06/08 18:09:59 jasper Exp $

COMMENT=		show differences between XML files/DOM trees

MODPY_EGG_VERSION=	0.6.10
DISTNAME=		xmldiff-${MODPY_EGG_VERSION}
PKGNAME=		py-xmldiff-${MODPY_EGG_VERSION}
REVISION=		0
CATEGORIES=		textproc

HOMEPAGE=		http://www.logilab.org/859/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python

MASTER_SITES=		http://ftp.logilab.org/pub/xmldiff/

RUN_DEPENDS=		shells/bash \
			textproc/py-xml

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bin/{xmldiff,xmlrev}

do-regress:
	@cd ${WRKSRC}/test/ && \
		${MODPY_BIN} runtests.py

.include <bsd.port.mk>
