# $OpenBSD: Makefile,v 1.16 2000/08/16 17:02:29 brad Exp $

DISTNAME=	ytalk-3.1.1
CATEGORIES=	net
NEED_VERSION=	1.319
HOMEPAGE=	http://www.iagora.com/~espel/ytalk/
MASTER_SITES=	${HOMEPAGE} \
		ftp://quatramaran.ens.fr/pub/orabidoo/ytalk/

MAINTAINER=	espie@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	no_x11
FLAVOR?=

SUBST_VARS=	SYSCONFDIR

CONFIGURE_STYLE= gnu dest
.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --without-x
.endif

INSTALL_TARGET=	install.bin install.man

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ytalk
	${INSTALL_DATA} ${WRKBUILD}/ytalkrc ${PREFIX}/share/examples/ytalk/ytalkrc-sample

.include <bsd.port.mk>
