# $OpenBSD: Makefile,v 1.9 2003/01/16 23:42:18 marcm Exp $

COMMENT=		"UPS monitoring program supporting many brands"
COMMENT-cgi=		"CGIs for monitoring Nut-based UPSs"

VERSION=		1.2.1
DISTNAME=		nut-${VERSION}
PKGNAME-cgi=		nut-cgi-${VERSION}
CATEGORIES=		sysutils

HOMEPAGE=		http://www.exploits.org/nut/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://penguin.harrison.k12.co.us/mirrors/nut/release/1.2/ \
			${HOMEPAGE}release/1.2/

FAKE_FLAGS=		INSTALLROOT="${WRKINST}"

CGI_CFG=		hosts.conf upsset.conf upsstats.html upsstats-single.html
WEB_ROOT=		/var/www
SYSCONFDIR=		/etc/nut
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-statepath="/var/db/nut"
CONFIGURE_ARGS+=	--with-user=uucp
CONFIGURE_ARGS+=	--with-group=dialer
CONFIGURE_ARGS+=	--with-ssl

PSEUDO_FLAVORS=		no_cgi
FLAVOR?=
MULTI_PACKAGES=
.if !${FLAVOR:L:Mno_cgi}
MULTI_PACKAGES+=	-cgi
.endif
SUBPACKAGE?=

.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-cgi"
PREFIX=			${WEB_ROOT}
. endif
.else
. if ${MULTI_PACKAGES:M-cgi}
BUILD_DEPENDS=		:gd->=1.8.3:graphics/gd

CONFIGURE_ARGS+=	--with-cgi
CONFIGURE_ARGS+=	--with-cgipath="${WEB_ROOT}/cgi-bin/nut"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include -L${LOCALBASE}/lib"

ALL_TARGET=		all cgi
INSTALL_TARGET=		install install-cgi
. endif
.endif

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nut
	cp -R ${WRKSRC}/docs/* ${PREFIX}/share/doc/nut/
# Yes, we install the CGI config files even if we're not building CGI support,
# it will get properly handled by the packaging.
	${INSTALL_DATA_DIR} ${WRKINST}${WEB_ROOT}/conf/nut
.for file in ${CGI_CFG}
	mv ${WRKINST}/${SYSCONFDIR}/${file}.sample ${WRKINST}${WEB_ROOT}/conf/nut/
.endfor
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nut; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/nut/

.include <bsd.port.mk>
