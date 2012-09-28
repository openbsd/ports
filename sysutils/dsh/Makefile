# $OpenBSD: Makefile,v 1.5 2012/09/28 22:14:28 naddy Exp $

COMMENT=	dancers shell or distributed shell

DISTNAME=	dsh-0.25.9
CATEGORIES=	sysutils net

HOMEPAGE=	http://www.netfort.gr.jp/~dancer/software/dsh.html.en
MASTER_SITES=	http://www.netfort.gr.jp/~dancer/software/downloads/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c dshconfig

LIB_DEPENDS=		devel/libdshconfig

MODULES=		devel/gettext

USE_LIBTOOL=		Yes

CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV =         CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lintl -liconv"
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

FAKE_FLAGS=		sysconfdir=${TRUEPREFIX}/share/examples

post-configure:
	@perl -pi -e 's,rsh,ssh,' ${WRKSRC}/dsh.conf

.include <bsd.port.mk>
