# $OpenBSD: Makefile,v 1.22 2013/02/09 14:49:51 sthen Exp $

COMMENT=	emacs interface to PGP and GnuPG

DISTNAME=	mailcrypt-3.5.7
REVISION=	2
CATEGORIES=     mail
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mailcrypt/}

HOMEPAGE=	http://mailcrypt.sourceforge.net/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest

FLAVORS=	gnupg pgp pgp5 
FLAVOR?=	gnupg

BUILD_DEPENDS=	emacs->=21,<22:editors/emacs21

.if ${FLAVOR:Mgnupg}
RUN_DEPENDS=	security/gnupg
.endif

.if ${FLAVOR:Mpgp}
RUN_DEPENDS=	pgp->=2,<3:security/pgp
.endif

.if ${FLAVOR:Mpgp5}
RUN_DEPENDS=	pgp->=5,<6:security/pgp5
.endif

# broken test infrastructure that is more a test framework for
# py-gnupg than mailcrypt.
NO_REGRESS=	Yes

.include <bsd.port.mk>
