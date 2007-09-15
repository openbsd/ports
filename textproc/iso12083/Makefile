# $OpenBSD: Makefile,v 1.17 2007/09/15 20:59:38 merdely Exp $

COMMENT=	SGML DTDs from The Electronic Publishing SIG

DISTNAME=	iso12083-1993
CATEGORIES=	textproc

MASTER_SITES=	ftp://info.ex.ac.uk/pub/SGML/ISO-12083/
DISTFILES=	article.dtd book.dtd maths.dtd serial.dtd

# custom
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DIST_SUBDIR=	iso12083

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
WRKDIST=	${WRKDIR}
EXTRACT_ONLY=	# empty

INSTDIR=	${PREFIX}/share/sgml/iso12083

pre-install:
	${INSTALL_DATA_DIR} ${INSTDIR}

do-install:
	@for i in ${DISTFILES}; do \
		${INSTALL_DATA} ${FULLDISTDIR}/$$i ${INSTDIR}/$$i; \
	done
	@${INSTALL_DATA} ${FILESDIR}/catalog ${INSTDIR}/catalog

.include <bsd.port.mk>
