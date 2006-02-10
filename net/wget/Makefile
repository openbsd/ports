# $OpenBSD: Makefile,v 1.42 2006/02/10 21:10:03 aanriot Exp $

COMMENT=	"retrieve files from the web via HTTP, HTTPS and FTP"

DISTNAME=	wget-1.10.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GNU:=wget/}

HOMEPAGE=	http://www.gnu.org/software/wget/

MODULES=	devel/gettext

MAINTAINER=	Alexandre Anriot <aanriot@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl 

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-build:
	@perl -pi -e s#/usr/local/etc#${SYSCONFDIR}#g ${WRKSRC}/doc/wget.texi
	@perl -pi -e s#/usr/local#${PREFIX}#g ${WRKSRC}/doc/wget.texi
	@perl -pi -e s#/usr/local/etc#${SYSCONFDIR}#g ${WRKSRC}/doc/sample.wgetrc

.include <bsd.port.mk>
