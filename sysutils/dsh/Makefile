# $OpenBSD: Makefile,v 1.7 2013/03/21 08:48:53 ajacoutot Exp $

COMMENT=	dancers shell or distributed shell

DISTNAME=	dsh-0.25.9
CATEGORIES=	sysutils net

HOMEPAGE=	http://www.netfort.gr.jp/~dancer/software/dsh.html.en
MASTER_SITES=	http://www.netfort.gr.jp/~dancer/software/downloads/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c dshconfig

LIB_DEPENDS=		devel/libdshconfig

MODULES=		devel/gettext


CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV =         CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lintl -liconv"
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

FAKE_FLAGS=		sysconfdir=${TRUEPREFIX}/share/examples

post-configure:
	@perl -pi -e 's,rsh,ssh,' ${WRKSRC}/dsh.conf

.include <bsd.port.mk>
