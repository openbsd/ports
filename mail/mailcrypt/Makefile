# $OpenBSD: Makefile,v 1.7 2002/05/13 23:31:25 espie Exp $

COMMENT=	"emacs interface to PGP and GnuPG"

DISTNAME=	mailcrypt-3.5.6
CATEGORIES=     mail
NEED_VERSION=	1.496
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mailcrypt/}

HOMEPAGE=	http://mailcrypt.sourceforge.net/
MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest

FLAVORS=	emacs gnupg pgp pgp5 xemacs
FLAVOR?=	emacs gnupg

.if ${FLAVOR:L:Memacs}
BUILD_DEPENDS=	::editors/emacs
.endif

.if ${FLAVOR:L:Mxemacs}
BUILD_DEPENDS=	::editors/xemacs21
.endif

.if ${FLAVOR:L:Mgnupg}
RUN_DEPENDS=	::security/gnupg
.endif

.if ${FLAVOR:L:Mpgp}
RUN_DEPENDS=	::security/pgp
.endif

.if ${FLAVOR:L:Mpgp5}
RUN_DEPENDS=	::security/pgp5
.endif

.include <bsd.port.mk>
