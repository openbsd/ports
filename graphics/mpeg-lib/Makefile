# $OpenBSD: Makefile,v 1.27 2005/10/30 00:10:41 fgsch Exp $

COMMENT=	"collection of C routines to decode MPEG movies"

DISTNAME=	mpeg_lib-1.3.1
PKGNAME=	${DISTNAME:S/_/-/}p0
CATEGORIES=	graphics

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.bic.mni.mcgill.ca/pub/mpeg/ \
		http://starship.python.net/~gward/mpeglib/

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	OPTIMIZE="${CFLAGS}"

do-regress:
	@cd ${WRKSRC} && env LD_LIBRARY_PATH=${WRKSRC} ./mpegtest -checksum test.mpg

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV+=	NO_SHARED_LIBS=Yes
.endif
