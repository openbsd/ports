# $OpenBSD: Makefile,v 1.5 2012/04/10 22:39:25 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	anti-spam plugin for Dovecot

V_DOVECOT_FULL= 2.0.20

DISTNAME=	dovecot-antispam-2.0
REVISION=	2
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	mail
MASTER_SITES=	http://johannes.sipsolutions.net/download/dovecot-antispam/
HOMEPAGE=	http://johannes.sipsolutions.net/Projects/dovecot-antispam
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	lib/dovecot/dovecot-lda lib/dovecot/dovecot-login \
		lib/dovecot/dovecot-storage lib/dovecot/dovecot

LIB_DEPENDS=    mail/dovecot=${V_DOVECOT_FULL}

USE_GMAKE=	Yes

MAKE_ENV=	DOVECOT=${LOCALBASE}/include/dovecot
MAKE_ENV+=	INSTALLDIR=$(PREFIX)/lib/dovecot

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/dovecot

post-install:
	${INSTALL_DATA} ${WRKBUILD}/antispam.7 ${PREFIX}/man/man7/antispam.7

.include <bsd.port.mk>
