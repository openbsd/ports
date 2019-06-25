# $OpenBSD: Makefile,v 1.4 2019/06/25 20:25:21 sthen Exp $

BROKEN-alpha=	beam/erl_process.c:6692: internal compiler error: in final_scan_insn, at final.c:2449

COMMENT-main=	${COMMENT}
COMMENT-wx=	WxWidgets bindings for Erlang

V=		21.2
MAJ_V=		21
EPOCH=		0
DISTNAME=	otp_src_$V
PKGNAME=	erlang-$V
PKGNAME-main=	erlang-$V
PKGNAME-wx=	erlang-wx-$V

REVISION-main=	2
REVISION-wx=	2

VERSION_SPEC=	>=21v0,<22v0
PKGSPEC-main=	erlang-${VERSION_SPEC}
PKGSPEC-wx=	erlang-wx-${VERSION_SPEC}

BUILD_DEPENDS+=	textproc/libxslt

CONFIGURE_ARGS+=--without-jinterface	\
		--without-odbc		\
		--enable-threads	\
		--enable-kernel-poll	\
		--disable-hipe

MULTI_PACKAGES = -main -wx

WANTLIB =	m pthread
WANTLIB-main =	${WANTLIB} c crypto kvm curses util

WANTLIB-wx += ${WANTLIB} GL GLU ${COMPILER_LIBCXX}
WANTLIB-wx += wx_baseu-3.0 wx_baseu_xml-3.0 wx_gtk3u_adv-3.0 wx_gtk3u_aui-3.0
WANTLIB-wx += wx_gtk3u_core-3.0 wx_gtk3u_gl-3.0 wx_gtk3u_html-3.0
WANTLIB-wx += wx_gtk3u_stc-3.0 wx_gtk3u_xrc-3.0

LIB_DEPENDS-wx +=x11/wxWidgets>=2.8.12p10
RUN_DEPENDS-wx =${BASE_PKGPATH},-main>=${MAJ_V}

DOC_DIR=	${PREFIX}/lib/erlang${MAJ_V}/
FAKE_FLAGS =	libdir_suffix="/erlang${MAJ_V}"

AUTOCONF_VERSION =2.69

# Use the target 'gen-versions' to update this list
ERL_VERSIONS=	\
ASN1_VSN        5.0.8 \
COMMON_TEST_VSN 1.16.1 \
COMPILER_VSN    7.3 \
CRYPTO_VSN      4.4 \
DEBUGGER_VSN    4.2.6 \
DIALYZER_VSN    3.3.1 \
DIAMETER_VSN    2.1.6 \
EDOC_VSN        0.9.4 \
EI_VSN  3.10.4 \
ELDAP_VSN       1.2.6 \
EMACS_VSN       2.7.0 \
ERL_DOCGEN_VSN  0.8.1 \
ERL_INTERFACE_VSN       3.10.4 \
ET_VSN  1.6.4 \
EUNIT_VSN       2.3.7 \
FTP_VSN 1.0.1 \
HIPE_VSN        3.18.2 \
INETS_VSN       7.0.3 \
JINTERFACE_VSN  1.9.1 \
KERNEL_VSN      6.2 \
MEGACO_VSN      3.18.4 \
MNESIA_VSN      4.15.5 \
OBSERVER_VSN    2.8.2 \
ODBC_VSN        2.12.2 \
OS_MON_VSN      2.4.7 \
OTP_MIBS_VSN    1.2.1 \
PARSETOOLS_VSN  2.1.8 \
PUBLIC_KEY_VSN  1.6.4 \
RELTOOL_VSN     0.7.8 \
RUNTIME_TOOLS_VSN       1.13.1 \
SASL_VSN        3.3 \
SNMP_VSN        5.2.12 \
SSH_VSN 4.7.2 \
SSL_VSN 9.1 \
STDLIB_VSN      3.7 \
SYNTAX_TOOLS_VSN        2.1.6 \
TFTP_VSN        1.0.1 \
TOOLS_VSN       3.0.2 \
WX_VSN  1.8.6 \
XMERL_VSN       1.3.18 \
ERTS_VSN        10.2
SYSTEM_VSN=	${V:R}

.include <bsd.port.mk>
