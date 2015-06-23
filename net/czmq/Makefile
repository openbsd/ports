# $OpenBSD: Makefile,v 1.1.1.1 2015/06/23 10:26:44 ajacoutot Exp $

COMMENT=		high-level C binding for ZeroMQ

DISTNAME=		czmq-3.0.2

SHARED_LIBS +=	czmq                      0.0 # 3.0

CATEGORIES=		net

HOMEPAGE=		http://czmq.zeromq.org/

# MPLv2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread sodium zmq

MASTER_SITES=		http://download.zeromq.org/

LIB_DEPENDS=		net/zeromq

CONFIGURE_STYLE=	gnu

# conflicts with lang/mono
CONFIGURE_ARGS +=	--without-makecert

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
