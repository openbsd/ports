# $OpenBSD: Makefile,v 1.1.1.1 2001/03/24 18:05:53 jakob Exp $

COMMENT=	XML version of the DocBook DTD

VERSION=	4.1.2

PKGNAME=	docbook-xml-${VERSION}
DISTNAME=	docbkx412
CATEGORIES=     textproc
NEED_VERSION=	1.363

HOMEPAGE=	http://www.docbook.org/xml/${VERSION}/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.docbook.org/xml/${VERSION}/
EXTRACT_SUFX=		.zip

NO_BUILD=	Yesb
WRKSRC=		${WRKDIR}


INSTDIR=	${PREFIX}/share/xml
DTDDIR=		${INSTDIR}/docbook
ENTDIR=		${INSTDIR}/docbook/ent
DTDFILES=	calstblx.dtd dbcentx.mod dbgenent.mod dbhierx.mod \
		dbnotnx.mod dbpoolx.mod docbookx.dtd soextblx.dtd
MISCFILES=	40chg.txt 41chg.txt readme.txt

post-extract:
	sed -e 's|%%PREFIX%%|${PREFIX}|g' ${FILESDIR}/catalog.tmpl > ${WRKSRC}/catalog

pre-install:
	mkdir -p ${ENTDIR}

do-install:
	@(cd ${WRKSRC};     ${INSTALL_DATA} ${DTDFILES} ${DTDDIR})
	@(cd ${WRKSRC}/ent; ${INSTALL_DATA} *.ent ${ENTDIR})
	@(cd ${WRKSRC};     ${INSTALL_DATA} ${MISCFILES} ${DTDDIR})
	${INSTALL_DATA} ${WRKSRC}/catalog ${INSTDIR}
	${INSTALL_DATA} ${FILESDIR}/catalog.docbook ${DTDDIR}/catalog

.include <bsd.port.mk>
