# $OpenBSD: Makefile,v 1.26 2002/10/24 22:20:03 naddy Exp $

COMMENT=	"u-law to gsm encoding audio converter and library"

DISTNAME=	gsm-1.0.10
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.cs.tu-berlin.de/pub/local/kbs/tubmik/gsm/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" DEBUG="${CFLAGS}" LDINC='-L$$(LIB)'
FAKE_FLAGS=	${MAKE_FLAGS} INSTALL_ROOT="${WRKINST}${PREFIX}"

WRKDIST=	${WRKDIR}/gsm-1.0-pl10
NO_REGRESS=	Yes

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV+=	NO_SHARED_LIBS=Yes
.endif
