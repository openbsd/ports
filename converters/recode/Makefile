# $OpenBSD: Makefile,v 1.16 2001/10/07 14:19:54 espie Exp $

COMMENT=	"convert files between character sets and usages"

DISTNAME=	recode-3.6
CATEGORIES=	converters textproc
NEED_VERSION=	1.402

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

LIB_DEPENDS=            intl::devel/gettext
			
# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= recode

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=--without-included-gettext
CONFIGURE_ENV+=CFLAGS="${CFLAGS} -I${LOCALBASE}/include"

REGRESS_DEPENDS=:python-*:lang/python

post-regress:
	cd ${WRKBUILD}/tests && ${MAKE} PYTHON=${LOCALBASE}/bin/python bigtest

.include <bsd.port.mk>
