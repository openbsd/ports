# $OpenBSD: Makefile,v 1.13 2018/05/12 09:41:31 espie Exp $

COMMENT=	display the moon's phase

DISTNAME=	luna19s
PKGNAME=	luna-1.9
CATEGORIES=	astro
EXTRACT_SUFX=	.lzh
REVISION =	0

EXTRACT_CASES=	*.lzh) lha xw=${WRKDIR}/${DISTNAME} ${FULLDISTDIR}/$$archive ;;

MAINTAINER=	Nick Nauwelaerts <nick@nauwelaerts.net>

PERMIT_PACKAGE_CDROM=	copyrighted
PERMIT_PACKAGE_FTP=	copyrighted
PERMIT_DISTFILES_FTP=	copyrighted
WANTLIB=		c

MASTER_SITES=	${_MASTER_SITE_FREEBSD}

BUILD_DEPENDS=	archivers/lha

MAKE_ENV=	CC="${CC}"
MAKE_FILE=	makefile
NO_TEST=	Yes

post-extract:
.for f in famplan.c luna.c luna.h makefile pyramid.c pyramid.h iprintf/makefile
	@cd ${WRKSRC} && sed -e \
	's#[[:cntrl:]]$$##g' < ${f} > ${f}.new && mv -f ${f}.new ${f}
.endfor

.include <bsd.port.mk>
