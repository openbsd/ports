# $OpenBSD: Makefile,v 1.2 2002/07/09 20:39:11 avsm Exp $ 

COMMENT=	"highly configurable pop3/imap4 webmail client"

V=		3.1
DISTNAME=	imp-${V}
CATEGORIES=	mail www
HOMEPAGE=	http://www.horde.org/imp/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.horde.org/pub/imp/tarballs/

NO_BUILD=	Yes
NO_REGRESS=	Yes
NO_CONFIGURE=	Yes
EXTRACT_ONLY=

PREFIX=		/var/www
INSTDIR=	${PREFIX}/horde
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	:horde->=2.1:devel/horde

pre-fake:
	${INSTALL_DATA_DIR} ${INSTDIR}

do-install:
	@cd ${INSTDIR} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}/imp-${V} ${INSTDIR}/imp

.include <bsd.port.mk>
