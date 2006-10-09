# $OpenBSD: Makefile,v 1.10 2006/10/09 09:54:01 espie Exp $

COMMENT=	"threaded newsreader"

CATEGORIES=	news
MAINTAINER= 	Marc Espie <espie@openbsd.org>

MASTER_SITES=${MASTER_SITE_SOURCEFORGE:=trn/}
V=76
DISTNAME=trn-4.0-test$V
PKGNAME=trn-4.0.$Vp1

PERMIT_PACKAGE_FTP=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
# Technically, we could put trn on CD-Rom, provided we include the distfile
# as well...
PERMIT_PACKAGE_CDROM=No
WANTLIB=c curses m 


CONFIGURE_STYLE=simple
CONFIGURE_SCRIPT=Configure
CONFIGURE_ARGS=-dse -Doptimize="${CFLAGS}" -Dlocal=${PREFIX}
SEPARATE_BUILD=concurrent

pre-configure: 
	cp ${FILESDIR}/openbsd-hints ${WRKSRC}/hints/openbsd.sh

FAKE_FLAGS= \
	rnbin=${WRKINST}${PREFIX}/bin \
	rnlib=${WRKINST}${PREFIX}/lib/trn \
	inewsbin=${WRKINST}${PREFIX}/bin \
	mansrc=${WRKINST}${PREFIX}/man/man1 \
	installfilexp=${WRKINST}${PREFIX}/lib/trn/filexp

post-install:
	find ${PREFIX}/lib/trn/HelpFiles | xargs chown ${SHAREOWN}:${SHAREGRP} 

NO_REGRESS=	Yes

.include <bsd.port.mk>
