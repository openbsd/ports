# $OpenBSD: Makefile,v 1.55 2001/10/24 17:10:59 brad Exp $

COMMENT=	network protocol analyzer

VERSION=	0.8.20
DISTNAME=	ethereal-${VERSION}
PKGNAME=	ethereal-${VERSION}
CATEGORIES=	net x11
NEED_VERSION=	1.474

MASTER_SITES=	http://www.ethereal.com/distribution/ \
		http://ethereal.zing.org/distribution/ \
		http://ethereal.boehm.org/distribution/ \
		http://www.ethereal.com/distribution/old-versions/ \
		http://ethereal.zing.org/distribution/old-versions/ \
		http://ethereal.boehm.org/distribution/old-versions/

HOMEPAGE=	http://www.ethereal.com/

BUILD_DEPENDS=	zsh:zsh-*:shells/zsh/stable

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/${PKGNAME}

SYSCONFDIR=		${PREFIX}/share/ethereal
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CONFIG_SHELL='$(WRKBUILD)/sh'
USE_GMAKE=		Yes
SUBST_VARS+=		VERSION

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
		patch-*

FLAVORS=	no_x11 snmp
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
LIB_DEPENDS=		glib.1.2,gmodule.1.2::devel/glib
CONFIGURE_ARGS+=	--disable-ethereal
.else
USE_X11=		Yes
LIB_DEPENDS=		gtk.1.2,gdk.1.2::x11/gtk+
CONFIGURE_ARGS+=	--enable-ethereal
.endif

.if ${FLAVOR:L:Msnmp}
CONFIGURE_ARGS+=	--enable-snmp
CONFIGURE_ENV+=		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" LIBS="-lsnmp -lcrypto"
LIB_DEPENDS+=		snmp::net/ucd-snmp
.else
CONFIGURE_ARGS+=	--disable-snmp
.endif

pre-configure:
	# Let zsh act as an sh replacement
	ln -sf $(LOCALBASE)/bin/zsh ${WRKBUILD}/sh

pre-build:
.if defined(SEPARATE_BUILD)
	cp -p ${WRKSRC}/packet-ncp2222.c ${WRKBUILD}
.endif

.include <bsd.port.mk>
