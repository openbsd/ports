# $OpenBSD: Makefile,v 1.1.1.1 2006/10/03 13:42:10 mbalmer Exp $

COMMENT=		"web-based double opt-in newsletter manager"

DISTNAME=		phplist-2.10.2

CATEGORIES=		www

HOMEPAGE=		http://www.phplist.com/

MAINTAINER=		Marc Balmer <mbalmer@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=phplist/}
EXTRACT_SUFX=		.tgz

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

PREFIX=			/var/www
INSTDIR=		${PREFIX}/lists
SUBST_VARS=		INSTDIR

RUN_DEPENDS=		:php5-mysql-*:www/php5/extensions,-mysql \
			:php5-imap-*:www/php5/extensions,-imap \
			::net/pear-HTTP-Request

do-install:
	@-test ! -d ${INSTDIR} && mkdir ${INSTDIR}
	@cd ${WRKDIST}/public_html/lists; tar cf - . | (cd ${INSTDIR}; tar xf -)
	@rm ${INSTDIR}/index.html
	@mv ${INSTDIR}/config/config.php ${INSTDIR}/config/config.php.dist

.include <bsd.port.mk>
