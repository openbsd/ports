# $OpenBSD: Makefile,v 1.4 2021/01/02 16:46:17 semarie Exp $

COMMENT=		graphical browser for plain-text protocols

V=			0.8.16
DISTNAME=		castor-${V}
REVISION=		0

DISTFILES=		castor-{castor/archive/}${V}${EXTRACT_SUFX}

CATEGORIES=		www

HOMEPAGE=		https://git.sr.ht/~julienxx/castor

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

WANTLIB += c c++abi crypto gdk-3 glib-2.0 gobject-2.0 gtk-3 pthread
WANTLIB += ssl

MASTER_SITES=		https://git.sr.ht/~julienxx/

MODULES=		devel/cargo

CONFIGURE_STYLE=	cargo

LIB_DEPENDS=		x11/gtk+3

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+3,-guic

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
.for i in 16 32 64 128
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/$ix$i/apps
	${INSTALL_DATA} ${WRKSRC}/data/org.typed-hole.castor-$i.png \
		${PREFIX}/share/icons/hicolor/$ix$i/apps/
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/scalable/apps
	${INSTALL_DATA} ${WRKSRC}/data/org.typed-hole.castor.svg \
		${PREFIX}/share/icons/hicolor/scalable/apps/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/data/Castor.desktop \
		${PREFIX}/share/applications/

MODCARGO_CRATES +=	aho-corasick	0.7.13
MODCARGO_CRATES +=	ansi-parser	0.6.5
MODCARGO_CRATES +=	arrayref	0.3.6
MODCARGO_CRATES +=	arrayvec	0.5.1
MODCARGO_CRATES +=	atk	0.8.0
MODCARGO_CRATES +=	atk-sys	0.9.1
MODCARGO_CRATES +=	autocfg	1.0.0
MODCARGO_CRATES +=	base64	0.11.0
MODCARGO_CRATES +=	bitflags	1.2.1
MODCARGO_CRATES +=	blake2b_simd	0.5.10
MODCARGO_CRATES +=	cairo-rs	0.8.1
MODCARGO_CRATES +=	cairo-sys-rs	0.9.2
MODCARGO_CRATES +=	cc	1.0.55
MODCARGO_CRATES +=	cfg-if	0.1.10
MODCARGO_CRATES +=	constant_time_eq	0.1.5
MODCARGO_CRATES +=	core-foundation	0.7.0
MODCARGO_CRATES +=	core-foundation-sys	0.7.0
MODCARGO_CRATES +=	crossbeam-utils	0.7.2
MODCARGO_CRATES +=	dirs	2.0.2
MODCARGO_CRATES +=	dirs-sys	0.3.5
MODCARGO_CRATES +=	foreign-types	0.3.2
MODCARGO_CRATES +=	foreign-types-shared	0.1.1
MODCARGO_CRATES +=	futures-channel	0.3.5
MODCARGO_CRATES +=	futures-core	0.3.5
MODCARGO_CRATES +=	futures-executor	0.3.5
MODCARGO_CRATES +=	futures-io	0.3.5
MODCARGO_CRATES +=	futures-macro	0.3.5
MODCARGO_CRATES +=	futures-task	0.3.5
MODCARGO_CRATES +=	futures-util	0.3.5
MODCARGO_CRATES +=	gdk	0.12.1
MODCARGO_CRATES +=	gdk-pixbuf	0.8.0
MODCARGO_CRATES +=	gdk-pixbuf-sys	0.9.1
MODCARGO_CRATES +=	gdk-sys	0.9.1
MODCARGO_CRATES +=	getrandom	0.1.14
MODCARGO_CRATES +=	gio	0.8.1
MODCARGO_CRATES +=	gio-sys	0.9.1
MODCARGO_CRATES +=	glib	0.9.3
MODCARGO_CRATES +=	glib-sys	0.9.1
MODCARGO_CRATES +=	gobject-sys	0.9.1
MODCARGO_CRATES +=	gtk	0.8.1
MODCARGO_CRATES +=	gtk-sys	0.9.2
MODCARGO_CRATES +=	idna	0.2.0
MODCARGO_CRATES +=	lazy_static	1.4.0
MODCARGO_CRATES +=	libc	0.2.71
MODCARGO_CRATES +=	linkify	0.4.0
MODCARGO_CRATES +=	log	0.4.8
MODCARGO_CRATES +=	matches	0.1.8
MODCARGO_CRATES +=	memchr	2.3.3
MODCARGO_CRATES +=	native-tls	0.2.4
MODCARGO_CRATES +=	nom	4.2.3
MODCARGO_CRATES +=	once_cell	1.4.0
MODCARGO_CRATES +=	open	1.4.0
MODCARGO_CRATES +=	openssl	0.10.30
MODCARGO_CRATES +=	openssl-probe	0.1.2
MODCARGO_CRATES +=	openssl-sys	0.9.58
MODCARGO_CRATES +=	pango	0.8.0
MODCARGO_CRATES +=	pango-sys	0.9.1
MODCARGO_CRATES +=	percent-encoding	2.1.0
MODCARGO_CRATES +=	pin-project	0.4.22
MODCARGO_CRATES +=	pin-project-internal	0.4.22
MODCARGO_CRATES +=	pin-utils	0.1.0
MODCARGO_CRATES +=	pkg-config	0.3.17
MODCARGO_CRATES +=	ppv-lite86	0.2.8
MODCARGO_CRATES +=	proc-macro-hack	0.5.16
MODCARGO_CRATES +=	proc-macro-nested	0.1.6
MODCARGO_CRATES +=	proc-macro2	1.0.18
MODCARGO_CRATES +=	quote	1.0.7
MODCARGO_CRATES +=	rand	0.7.3
MODCARGO_CRATES +=	rand_chacha	0.2.2
MODCARGO_CRATES +=	rand_core	0.5.1
MODCARGO_CRATES +=	rand_hc	0.2.0
MODCARGO_CRATES +=	redox_syscall	0.1.56
MODCARGO_CRATES +=	redox_users	0.3.4
MODCARGO_CRATES +=	regex	1.3.9
MODCARGO_CRATES +=	regex-syntax	0.6.18
MODCARGO_CRATES +=	remove_dir_all	0.5.3
MODCARGO_CRATES +=	rust-argon2	0.7.0
MODCARGO_CRATES +=	schannel	0.1.19
MODCARGO_CRATES +=	security-framework	0.4.4
MODCARGO_CRATES +=	security-framework-sys	0.4.3
MODCARGO_CRATES +=	serde	1.0.114
MODCARGO_CRATES +=	serde_derive	1.0.114
MODCARGO_CRATES +=	slab	0.4.2
MODCARGO_CRATES +=	syn	1.0.33
MODCARGO_CRATES +=	tempfile	3.1.0
MODCARGO_CRATES +=	textwrap	0.11.0
MODCARGO_CRATES +=	thread_local	1.0.1
MODCARGO_CRATES +=	tinyvec	0.3.3
MODCARGO_CRATES +=	toml	0.5.6
MODCARGO_CRATES +=	unicode-bidi	0.3.4
MODCARGO_CRATES +=	unicode-normalization	0.1.13
MODCARGO_CRATES +=	unicode-width	0.1.7
MODCARGO_CRATES +=	unicode-xid	0.2.1
MODCARGO_CRATES +=	url	2.1.1
MODCARGO_CRATES +=	vcpkg	0.2.10
MODCARGO_CRATES +=	version_check	0.1.5
MODCARGO_CRATES +=	wasi	0.9.0+wasi-snapshot-preview1
MODCARGO_CRATES +=	winapi	0.3.9
MODCARGO_CRATES +=	winapi-i686-pc-windows-gnu	0.4.0
MODCARGO_CRATES +=	winapi-x86_64-pc-windows-gnu	0.4.0

.include <bsd.port.mk>
