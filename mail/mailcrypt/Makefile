# $OpenBSD: Makefile,v 1.11 2002/10/27 16:59:48 naddy Exp $

COMMENT=	"emacs interface to PGP and GnuPG"

DISTNAME=	mailcrypt-3.5.7
CATEGORIES=     mail
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mailcrypt/}

HOMEPAGE=	http://mailcrypt.sourceforge.net/
MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest

FLAVORS=	emacs emacs21 gnupg pgp pgp5 xemacs
FLAVOR?=	emacs gnupg

.if ${FLAVOR:L:Memacs}
BUILD_DEPENDS=	:emacs-20.*:editors/emacs
.elif ${FLAVOR:L:Memacs21}
BUILD_DEPENDS=	:emacs-21.*:editors/emacs21
.endif

.if ${FLAVOR:L:Mxemacs}
BUILD_DEPENDS=	:xemacs-21.*:editors/xemacs21
.endif

.if ${FLAVOR:L:Mgnupg}
RUN_DEPENDS=	:gnupg-*:security/gnupg
.endif

.if ${FLAVOR:L:Mpgp}
RUN_DEPENDS=	:pgp-2.*:security/pgp
.endif

.if ${FLAVOR:L:Mpgp5}
RUN_DEPENDS=	:pgp-5.*:security/pgp5
.endif

REGRESS_DEPENDS=	:python-2.2*:lang/python/2.2

pre-regress:
	@perl -i -pe 's:%%LOCALBASE%%:${LOCALBASE}:' \
		${WRKSRC}/tests/gpg-keys/*.py

.include <bsd.port.mk>
