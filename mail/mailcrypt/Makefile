# $OpenBSD: Makefile,v 1.2 2001/02/28 20:35:16 avsm Exp $

DISTNAME=	mailcrypt-3.5.5
CATEGORIES=     mail
NEED_VERSION=	1.356
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= mailcrypt

HOMEPAGE=	http://mailcrypt.sourceforge.net/

MAINTAINER=	Shell Hung <i@shellhung.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest

FLAVORS=	emacs gnupg pgp pgp5 xemacs
FLAVOR?=	emacs gnupg

.if ${FLAVOR:L:Memacs}
BUILD_DEPENDS=	emacs::editors/emacs
.endif

.if ${FLAVOR:L:Mxemacs}
BUILD_DEPENDS=	xemacs::editors/xemacs21
.endif

.if ${FLAVOR:L:Mgnupg}
RUN_DEPENDS=	gpg::security/gnupg
.endif

.if ${FLAVOR:L:Mpgp}
RUN_DEPENDS=	pgp::security/pgp
.endif

.if ${FLAVOR:L:Mpgp5}
RUN_DEPENDS=	pgp5::security/pgp5
.endif

.include <bsd.port.mk>
