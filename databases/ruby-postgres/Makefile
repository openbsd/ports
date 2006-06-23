# $OpenBSD: Makefile,v 1.1.1.1 2006/06/23 08:12:23 sturm Exp $

SHARED_ONLY=	Yes

COMMENT=	"access a PostgreSQL database from ruby"

DISTNAME=	ruby-postgres-0.7.1.2006.04.06
CATEGORIES=	databases

MAINTAINER=	Markus Friedl <markus@openbsd.org> 

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m

MASTER_SITES=	http://rubyforge.org/frs/download.php/9553/

MODULES=	lang/ruby

LIB_DEPENDS=	pq.2::databases/postgresql \
		ruby.1::lang/ruby

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
