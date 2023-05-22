COMMENT=	open source WS-Management client API
# (and server, but that's not working here)

GH_ACCOUNT=	Openwsman
GH_PROJECT=	openwsman
GH_TAGNAME=	v2.7.2

SHARED_LIBS +=	wsman                     0.0 # 0.0
SHARED_LIBS +=	wsman_client              0.0 # 0.0
SHARED_LIBS +=	wsman_clientpp            0.0 # 0.0
SHARED_LIBS +=	wsman_curl_client_transport 0.0 # 0.0
SHARED_LIBS +=	wsman_server              0.0 # 0.0
SHARED_LIBS +=	wsman_file_auth           0.0 # 0.0
SHARED_LIBS +=	redirect                  0.0 # 0.0
SHARED_LIBS +=	wsman_cim_plugin          0.0 # 0.0
SHARED_LIBS +=	wsman_identify_plugin     0.0 # 0.0
SHARED_LIBS +=	wsman_test                0.0 # 0.0

CATEGORIES=	sysutils

HOMEPAGE=	https://openwsman.github.io/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} cmpisfcc crypto curl m ssl xml2

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake
CONFIGURE_ARGS=	-DLIB=lib \
		-DSYSCONFDIR=${SYSCONFDIR} \
		-DBUILD_BINDINGS=No \
		-DBUILD_PERL=No \
		-DBUILD_PYTHON=No \
		-DBUILD_PYTHON3=No \
		-DBUILD_RUBY=No \
		-DUSE_PAM=No
MODCMAKE_LDFLAGS= -lm

LIB_DEPENDS=	sysutils/sblim-sfcc \
		textproc/libxml

post-install:
	mv ${WRKINST}/etc/openwsman ${PREFIX}/share/examples/

.include <bsd.port.mk>
