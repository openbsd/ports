# $OpenBSD: Makefile,v 1.51 2001/10/07 18:49:28 jakob Exp $

COMMENT=	network protocol analyzer

VERSION=	0.8.19
DISTNAME=	ethereal-${VERSION}
PKGNAME=	ethereal-${VERSION}
CATEGORIES=	net x11
NEED_VERSION=	1.363

MASTER_SITES=	http://www.ethereal.com/distribution/ \
		http://ethereal.zing.org/distribution/ \
		http://ethereal.boehm.org/distribution/ \
		http://www.ethereal.com/distribution/old-versions/ \
		http://ethereal.zing.org/distribution/old-versions/ \
		http://ethereal.boehm.org/distribution/old-versions/

HOMEPAGE=	http://www.ethereal.com/

LIB_DEPENDS=	gtk.1.2::x11/gtk+

BUILD_DEPENDS=	zsh:zsh-*:shells/zsh/stable

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
SYSCONFDIR=		${PREFIX}/share/ethereal
CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes

WRKDIST=		${WRKDIR}/${PKGNAME}

FLAVORS=	snmp

FLAVOR?=
.if ${FLAVOR:L} == "snmp"
CONFIGURE_ARGS+=	--enable-snmp
CONFIGURE_ENV+=		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" LIBS="-lsnmp -lcrypto"
LIB_DEPENDS+=		snmp::net/ucd-snmp
.else
CONFIGURE_ARGS+=	--disable-snmp
.endif
CONFIGURE_ENV+=		CONFIG_SHELL='$(WRKBUILD)/sh'

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
		patch-*

pre-configure:
	# Let zsh act as an sh replacement
	ln -sf $(LOCALBASE)/bin/zsh ${WRKBUILD}/sh

pre-build:
.if defined(SEPARATE_BUILD)
	cp -p ${WRKSRC}/packet-ncp2222.c ${WRKBUILD}
.endif

.include <bsd.port.mk>
