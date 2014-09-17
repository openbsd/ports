# $OpenBSD: Makefile,v 1.63 2014/09/17 12:50:38 sthen Exp $

COMMENT=	tty-based e-mail client

DISTNAME=	mutt-1.5.23
EPOCH=		0
REVISION=	6

CATEGORIES=	mail
HOMEPAGE=	http://www.mutt.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=	c crypto idn qdbm>=14 ssl z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mutt/} \
		ftp://ftp.fu-berlin.de/pub/unix/mail/mutt/ \
		ftp://ftp.mutt.org/mutt/
MASTER_SITES1=	http://lunar-linux.org/~tchan/mutt/
MASTER_SITES2=	http://spacehopper.org/mutt/
DIST_SUBDIR=	mutt
PATCH_DIST_STRIP= -p1

MODULES=	devel/gettext

LIB_DEPENDS=	databases/qdbm \
		devel/libidn
BUILD_DEPENDS+=	textproc/docbook-xsl \
		www/lynx

FLAVORS=	sasl sidebar slang compressed
FLAVOR?=

AUTOCONF_VERSION= 2.65
AUTOMAKE_VERSION= 1.9
CONFIGURE_STYLE=  autoconf

FLAVOR_COMMA=	${FLAVOR_EXT:S/-/,/g}
SUBST_VARS=	FLAVOR_COMMA

BUILD_DEPENDS+=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
CONFIGURE_ARGS+= --enable-external_dotlock \
		--disable-fcntl \
		--enable-flock \
		--enable-hcache \
		--with-idn \
		--enable-imap \
		--enable-pop \
		--enable-smtp \
		--mandir=${PREFIX}/man \
		--without-gdbm \
		--with-docdir="${PREFIX}/share/doc/mutt" \
		--with-ssl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ISPELL="${LOCALBASE}/bin/ispell"
SYSCONFDIR=	${BASESYSCONFDIR}/mutt
FAKE_FLAGS=	sysconfdir="${PREFIX}/share/examples/mutt"

.if defined(DEBUG)
CONFIGURE_ARGS+=	--enable-debug
.endif

## standard flavours:

.if ${FLAVOR:Msasl}
CONFIGURE_ARGS+= --with-sasl=${LOCALBASE}
LIB_DEPENDS+=	security/cyrus-sasl2
WANTLIB+=	sasl2
.endif

.if ${FLAVOR:Mslang}
CONFIGURE_ARGS+= --with-slang="${PREFIX}"
LIB_DEPENDS+=	devel/libslang
WANTLIB+=	m termlib slang>=14
.else
CONFIGURE_ARGS+= --with-curses
WANTLIB+=	ncurses
.endif

# third party patches

# N.B. In general we would like to avoid additional patches here, they
# frequently cause problems at update time. If you have a favourite patch
# that you would like to see added, please engage with Mutt upstream
# to talk about getting it imported directly instead. You can of course
# patch locally :-)

# If there are conflicts when updating mutt, check to see if gentoo have
# already fixed: http://prefix.gentooexperimental.org:8000/mutt-patches

# sidebar patch (not good, but people seem to like it...)
DIST_SIDEBAR=	sidebar-1.5.22.diff1.gz:2
SUPDISTFILES+=	${DIST_SIDEBAR}
.if ${FLAVOR:Msidebar}
PATCHFILES+=	${DIST_SIDEBAR}
.endif

# compressed folders patch http://www.spinnaker.de/mutt/compressed/
DIST_COMPR=	compressed-1.5.22.diff0.gz:2
SUPDISTFILES+=	${DIST_COMPR}
.if ${FLAVOR:Mcompressed}
PATCHFILES+=	${DIST_COMPR}
CONFIGURE_ARGS+= --enable-compressed
.endif

# trashfolder, http://cedricduval.free.fr/mutt/patches/
# enabled unconditionally, it's not *too* intrusive (additional flavours
# mean a big increase in ports testing required).
PATCHFILES+=	trashfolder-1.5.22.diff0.gz:2

post-patch:
	cd ${WRKSRC}; \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    autoreconf --install

post-install:
	@mv -f ${PREFIX}/share/doc/mutt/samples/* ${PREFIX}/share/examples/mutt
	@perl -pi -e "s,/usr/bin/gpg,${LOCALBASE}/bin/gpg," \
		${PREFIX}/share/examples/mutt/gpg.rc

.include <bsd.port.mk>
