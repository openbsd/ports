# $OpenBSD: Makefile,v 1.12 2004/02/21 06:16:58 marcm Exp $

COMMENT=		"UPS monitoring program supporting many brands"
COMMENT-cgi=		"CGIs for monitoring Nut-based UPSs"

VERSION=		1.4.1
DISTNAME=		nut-${VERSION}
PKGNAME-cgi=		nut-cgi-${VERSION}
CATEGORIES=		sysutils
HOMEPAGE=		http://www.networkupstools.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		http://random.networkupstools.org/source/1.4/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WEB_ROOT=		/var/www
NUT_USER=		_ups
NUT_ID=			529
NUT_STATEDIR=		/var/db/nut
CONFDIR=		${SYSCONFDIR}/nut
SUBST_VARS=		NUT_USER NUT_ID NUT_STATEDIR CONFDIR

CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS+=	--sysconfdir=${CONFDIR}
CONFIGURE_ARGS+=	--with-statepath=${NUT_STATEDIR}
CONFIGURE_ARGS+=	--with-user=${NUT_USER}
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
CONFIGURE_ARGS+=	--with-gd-libs="-L${LOCALBASE}/lib -lgd -lpng -lz -ljpeg -lttf -lm"
CONFIGURE_ARGS+=	--with-gd-includes="-I${LOCALBASE}/include"

ALL_TARGET=		all cgi
INSTALL_TARGET=		install install-cgi
. endif
.endif

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nut
	cp -R ${WRKSRC}/docs/* ${PREFIX}/share/doc/nut/
# Yes, we install the CGI config files even if we're not building CGI support,
# it will get properly handled by packaging.
	${INSTALL_DATA_DIR} ${WRKINST}${WEB_ROOT}/conf/nut
.for file in hosts.conf upsset.conf upsstats.html upsstats-single.html
	mv ${WRKINST}/${CONFDIR}/${file}.sample ${WRKINST}${WEB_ROOT}/conf/nut/
.endfor
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nut; \
	${INSTALL_DATA} ${WRKINST}/${CONFDIR}/* ${PREFIX}/share/examples/nut/

.include <bsd.port.mk>
