# $OpenBSD: Makefile,v 1.15 2000/08/16 16:34:17 naddy Exp $

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

FLAVORS= no_x11
FLAVOR?=

# No gnu-configure for now, need to set up DESTDIR in prefix/etc for fake
# to work.
CONFIGURE_STYLE=gnu dest
.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --without-x
.endif
SUBST_VARS=	SYSCONFDIR

INSTALL_TARGET=	install.bin install.man

post-install:
	${INSTALL_DATA} ${WRKBUILD}/ytalkrc ${PREFIX}/share/examples/ytalkrc

.include <bsd.port.mk>
