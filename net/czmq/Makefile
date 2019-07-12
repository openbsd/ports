# $OpenBSD: Makefile,v 1.4 2019/07/12 20:48:24 sthen Exp $

COMMENT=		high-level C binding for ZeroMQ

V =			4.0.2
DISTNAME=		czmq-$V

SHARED_LIBS +=	czmq                      1.0 # 4.2

CATEGORIES=		net

HOMEPAGE=		http://czmq.zeromq.org/

# MPLv2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c ossp-uuid pthread sodium zmq

MASTER_SITES=		https://github.com/zeromq/czmq/releases/download/v$V/

LIB_DEPENDS=		devel/uuid \
			net/zeromq

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV += 	ac_cv_prog_czmq_have_xmlto=no \
			ac_cv_prog_czmq_have_asciidoc=no \
			uuid_CFLAGS="`pkg-config --cflags ossp-uuid`" \
			uuid_LIBS="`pkg-config --libs ossp-uuid`"

### XXX error: stray '\357' in program
UTFAIL=			zactor zauth zarmour zbeacon zcertstore zchunk zconfig \
			zdir zdir_patch zfile zframe zhashx zlistx zmonitor \
			zmsg zpoller zproxy zsock zstr zsys zhash
post-patch:
.for f in ${UTFAIL}
	perl -pi -e 's/^.*$$/\/\*/g if 1 .. 1' ${WRKSRC}/src/${f}.c
.endfor
### XXX

.include <bsd.port.mk>
