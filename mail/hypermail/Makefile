# $NetBSD: Makefile,v 1.3 2000/01/10 14:35:22 hubertf Exp $
# $FreeBSD: ports/www/hypermail/Makefile,v 1.4 1999/08/31 02:42:53 peter Exp $
# $OpenBSD: Makefile,v 1.12 2002/03/21 09:28:04 form Exp $

COMMENT=	"generate a cross-referenced HTML mail archive"

DISTNAME=	hypermail-2.1.4
CATEGORIES=	mail www
NEED_VERSION=	1.515
MASTER_SITES=	http://www.landfield.com/hypermail/dist/ \
		ftp://ftp.landfield.com/hypermail/ \
		ftp://ftp.faqs.org/hypermail/

HOMEPAGE=	http://www.landfield.com/hypermail/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAINTAINER=	Oleg Safiullin <form@openbsd.org>

CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/src/pcre
CONFIGURE_ARGS=	--with-htmldir=${PREFIX}/share/doc/hypermail

COPTS=		-DHAVE_VFSCANF
#COPTS=		-DWITHOUT_TRIO -Dtrio_snprintf=snprintf \
#		-Dtrio_asprintf=asprintf

MAKE_FLAGS=	WARNINGS=''

FLAVORS=	gdbm
FLAVOR?=

.if ${FLAVOR:L} == "gdbm"
CONFIGURE_ARGS+=--with-gdbm
LIB_DEPENDS=	gdbm.::databases/gdbm
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/hypermail ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hypermail
.for f in hr.yellow.gif hypermail.gif hypermail-faq.html customizing.html \
	hmrc.html
	${INSTALL_DATA} ${WRKSRC}/docs/${f} ${PREFIX}/share/doc/hypermail
.endfor
	${INSTALL_MAN} ${WRKSRC}/docs/hypermail.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/docs/hmrc.4 ${PREFIX}/man/man5/hmrc.5

.include <bsd.port.mk>
