# $OpenBSD: Makefile,v 1.32 2002/04/06 22:14:17 miod Exp $

COMMENT=	"retrieve files from the 'net via HTTP and FTP"

DISTNAME=	wget-1.7
CATEGORIES=	net
NEED_VERSION=	1.460
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITES0=	ftp://ftp.kame.net/pub/kame/misc/
MASTER_SITE_SUBDIR= wget

PATCHFILES=	wget-17-v6-20010716a.diff.gz:0
PATCH_DIST_STRIP= -p1

HOMEPAGE=	http://www.gnu.org/software/wget/

MODULES=	gettext

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
		patch-*

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-ipv6
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib -lintl" \

post-patch:
	@cd ${WRKSRC}; touch configure
	@mv -f ${WRKSRC}/doc/wget.texi ${WRKSRC}/doc/wget.texi.bak
	@sed -e s#/usr/local/etc#${SYSCONFDIR}#g \
	     -e s#/usr/local#${PREFIX}#g \
		${WRKSRC}/doc/wget.texi.bak > ${WRKSRC}/doc/wget.texi
	@mv -f ${WRKSRC}/doc/sample.wgetrc ${WRKSRC}/doc/sample.wgetrc.bak
	@sed -e s#/usr/local/etc#${SYSCONFDIR}#g \
		${WRKSRC}/doc/sample.wgetrc.bak > ${WRKSRC}/doc/sample.wgetrc

.include <bsd.port.mk>
