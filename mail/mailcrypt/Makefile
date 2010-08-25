# $OpenBSD: Makefile,v 1.18 2010/08/25 06:34:50 ajacoutot Exp $

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

BUILD_DEPENDS=	:emacs->=21,<22:editors/emacs21

.if ${FLAVOR:L:Mgnupg}
RUN_DEPENDS=	:gnupg-<2:security/gnupg
.endif

.if ${FLAVOR:L:Mpgp}
RUN_DEPENDS=	:pgp->=2,<3:security/pgp
.endif

.if ${FLAVOR:L:Mpgp5}
RUN_DEPENDS=	:pgp->=5,<6:security/pgp5
.endif

REGRESS_DEPENDS=	:python->=2.3,<2.4:lang/python/2.3

pre-regress:
	@perl -i -pe 's:%%LOCALBASE%%:${LOCALBASE}:' \
		${WRKSRC}/tests/gpg-keys/*.py

.include <bsd.port.mk>
