# $OpenBSD: Makefile,v 1.37 2002/02/20 01:17:03 brad Exp $

COMMENT=	"WWW and FTP proxy cache and accelerator"

DISTNAME=	squid-2.5.PRE4
CATEGORIES=	www
NEED_VERSION=	1.500
MASTER_SITES=	http://www.squid-cache.org/Versions/v2/2.5/
DIST_SUBDIR=	squid

HOMEPAGE=	http://www.squid-cache.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SYSCONFDIR=	/etc/squid
SQUIDDIR?=	/var/squid
SUBST_VARS=	SQUIDDIR

FLAVORS=	transparent
FLAVOR?=

CONFIGURE_STYLE= autoconf
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/cfgaux
CONFIGURE_ARGS= --datadir="${PREFIX}/share/squid" \
		--localstatedir="${SQUIDDIR}" \
		--enable-removal-policies

.if ${FLAVOR:L:Mtransparent}
CONFIGURE_ARGS+= --enable-pf-transparent
.endif

post-install:
	@chown -R root:wheel ${PREFIX}/share/examples/squid

.include <bsd.port.mk>
