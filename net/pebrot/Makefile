# $OpenBSD: Makefile,v 1.3 2003/12/30 09:32:45 kevlo Exp $

COMMENT=	"text-based MSN messenger client"

DISTNAME=	pebrot-0.8.2
PKGNAME=	py-${DISTNAME}
CATEGORIES=	net

HOMEPAGE=	http://pebrot.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pebrot/}

NO_REGRESS=	Yes

MODULES=	python

FLAVORS=	cjk
FLAVOR?=

.if ${FLAVOR:L:Mcjk}
RUN_DEPENDS=	:py-cjkcodecs-*:converters/py-cjkcodecs
.endif

DOCDIR=		${PREFIX}/share/doc/pebrot
EXAMPLESDIR=	${PREFIX}/share/examples/pebrot

pre-build:
	 @perl -pi -e 's,%%EXAMPLESDIR%%,${EXAMPLESDIR}/,g' \
		${WRKSRC}/pebrot.py

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/pebrot ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/pebrotrc ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	cp -R ${WRKSRC}/logos ${EXAMPLESDIR}

.include <bsd.port.mk>
