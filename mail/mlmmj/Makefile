# $OpenBSD: Makefile,v 1.5 2007/05/05 17:44:51 simon Exp $

COMMENT=	"mailing list manager"

DISTNAME=	mlmmj-1.2.13
PKGNAME=	${DISTNAME}p0
CATEGORIES=    	mail

HOMEPAGE=	http://mlmmj.mmj.dk/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}/files/

CONFIGURE_STYLE=gnu

DOCS=	README README.access README.exim4 \
	README.security README.sendmail TUNABLES

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mlmmj
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/mlmmj
	mv ${PREFIX}/bin/mlmmj-make-ml.sh ${PREFIX}/bin/mlmmj-make-ml
	mv ${PREFIX}/man/man1/mlmmj-make-ml.sh.1 \
		${PREFIX}/man/man1/mlmmj-make-ml.1

.include <bsd.port.mk>
