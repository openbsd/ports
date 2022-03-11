COMMENT =		command-line DNS lookup tool

GH_ACCOUNT =		ogham
GH_PROJECT =		dog
GH_TAGNAME =		v0.1.0
REVISION =		1

CATEGORIES =		net

# EUPL
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi crypto pthread ssl

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

HOMEPAGE =		https://dns.lookup.dog/
MASTER_SITES0 =		https://github.com/ogham/dog/releases/download/${GH_TAGNAME}/
DISTFILES +=            ${DISTNAME}{${GH_TAGNAME}}${EXTRACT_SUFX} \
			dog-${GH_TAGNAME}-x86_64-apple-darwin.zip:0

# some entries from modcargo-gen-crates dropped;
#
# dns, dns-transport: these don't come from crates.io, they are in the
# "dog" distfile itself.
#
# mutagen, mutagen-core, mutagen-transform: optional test dep,
# requires newer version than on crates.io.
#
MODCARGO_CRATES +=	addr2line	0.14.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	adler	0.2.3	# 0BSD OR MIT OR Apache-2.0
MODCARGO_CRATES +=	ansi_term	0.11.0	# MIT
MODCARGO_CRATES +=	ansi_term	0.12.1	# MIT
MODCARGO_CRATES +=	atty	0.2.14	# MIT
MODCARGO_CRATES +=	autocfg	1.0.1	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	backtrace	0.3.54	# MIT/Apache-2.0
MODCARGO_CRATES +=	bitflags	1.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	byteorder	1.3.4	# Unlicense OR MIT
MODCARGO_CRATES +=	cc	1.0.61	# MIT/Apache-2.0
MODCARGO_CRATES +=	cfg-if	0.1.10	# MIT/Apache-2.0
MODCARGO_CRATES +=	cfg-if	1.0.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	core-foundation	0.7.0	# MIT / Apache-2.0
MODCARGO_CRATES +=	core-foundation-sys	0.7.0	# MIT / Apache-2.0
MODCARGO_CRATES +=	ctor	0.1.16	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	datetime	0.5.1	# MIT
MODCARGO_CRATES +=	difference	2.0.0	# MIT
MODCARGO_CRATES +=	failure	0.1.8	# MIT OR Apache-2.0
MODCARGO_CRATES +=	failure_derive	0.1.8	# MIT OR Apache-2.0
MODCARGO_CRATES +=	foreign-types	0.3.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	foreign-types-shared	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	getopts	0.2.21	# MIT/Apache-2.0
MODCARGO_CRATES +=	getrandom	0.1.15	# MIT OR Apache-2.0
MODCARGO_CRATES +=	gimli	0.23.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	hermit-abi	0.1.17	# MIT/Apache-2.0
MODCARGO_CRATES +=	httparse	1.3.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	ipconfig	0.2.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	itoa	0.4.6	# MIT OR Apache-2.0
MODCARGO_CRATES +=	json	0.12.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	lazy_static	1.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	libc	0.2.80	# MIT OR Apache-2.0
MODCARGO_CRATES +=	log	0.4.11	# MIT OR Apache-2.0
MODCARGO_CRATES +=	miniz_oxide	0.4.3	# MIT OR Zlib OR Apache-2.0
MODCARGO_CRATES +=	native-tls	0.2.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	object	0.22.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	openssl	0.10.30	# Apache-2.0
MODCARGO_CRATES +=	openssl-probe	0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	openssl-sys	0.9.58	# MIT
MODCARGO_CRATES +=	output_vt100	0.1.2	# MIT
MODCARGO_CRATES +=	pkg-config	0.3.19	# MIT/Apache-2.0
MODCARGO_CRATES +=	ppv-lite86	0.2.10	# MIT/Apache-2.0
MODCARGO_CRATES +=	pretty_assertions	0.6.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	proc-macro2	1.0.24	# MIT OR Apache-2.0
MODCARGO_CRATES +=	quote	1.0.7	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand	0.7.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand_chacha	0.2.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand_core	0.5.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand_hc	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	redox_syscall	0.1.57	# MIT
MODCARGO_CRATES +=	regex	1.4.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	regex-syntax	0.6.21	# MIT/Apache-2.0
MODCARGO_CRATES +=	remove_dir_all	0.5.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustc-demangle	0.1.18	# MIT/Apache-2.0
MODCARGO_CRATES +=	ryu	1.0.5	# Apache-2.0 OR BSL-1.0
MODCARGO_CRATES +=	schannel	0.1.19	# MIT
MODCARGO_CRATES +=	security-framework	0.4.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	security-framework-sys	0.4.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde	1.0.117	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_derive	1.0.117	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_json	1.0.59	# MIT OR Apache-2.0
MODCARGO_CRATES +=	socket2	0.3.15	# MIT/Apache-2.0
MODCARGO_CRATES +=	syn	1.0.48	# MIT OR Apache-2.0
MODCARGO_CRATES +=	synstructure	0.12.4	# MIT
MODCARGO_CRATES +=	tempfile	3.1.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	unicode-width	0.1.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-xid	0.2.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	vcpkg	0.2.10	# MIT/Apache-2.0
MODCARGO_CRATES +=	wasi	0.9.0+wasi-snapshot-preview1	# Apache-2.0 WITH LLVM-exception OR Apache-2.0 OR MIT
MODCARGO_CRATES +=	widestring	0.4.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi	0.3.9	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-i686-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-x86_64-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winreg	0.6.2	# MIT

post-install:
	${INSTALL_DATA} ${WRKDIR}/man/dog.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
