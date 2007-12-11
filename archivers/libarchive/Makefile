# $OpenBSD: Makefile,v 1.3 2007/12/11 20:29:40 naddy Exp $

COMMENT=	library for reading and writing streaming archives

V=		2.4.6
DISTNAME=	libarchive-$V
SHARED_LIBS +=  archive              1.1      # .6.6
CATEGORIES=	archivers
HOMEPAGE=	http://people.freebsd.org/~kientzle/libarchive/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}src/
MASTER_SITES0=	http://shell.uugrn.org/~naddy/
DISTFILES=	libarchive-$V.tar.gz \
		libarchive-catpages-$V.tar.gz:0

WANTLIB=	c z
LIB_DEPENDS=	bz2.>=10::archivers/bzip2

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-bsdcpio
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config.aux

MAN_fragment= \
	MAN=`(printf 'mans:\n\t@echo $$(man_MANS)\n'; cat Makefile) | \
		make -f - mans`

post-install:
	@cd ${WRKSRC}; \
	${MAN_fragment}; \
	for m in $$MAN; do \
		${INSTALL_MAN} $${m%.[1-9]}.0 \
		    ${PREFIX}/man/cat$${m#$${m%[1-9]}}/; \
	done

# convenience target for maintainer
FREEBSDHOST=	shell.uugrn.org
update-catpages:
	@cd ${WRKSRC}; \
	${MAN_fragment}; \
	for m in $$MAN; do \
		echo "Formatting $$m ..."; \
		ssh ${FREEBSDHOST} nroff -mdoc <$$m >$${m%.[1-9]}.0 ; \
		CAT="$$CAT $${m%.[1-9]}.0" ; \
	done; \
	pax -w -s ',^,${DISTNAME}/,' $$CAT | \
	    gzip >${FULLDISTDIR}/libarchive-catpages-$V.tar.gz

.include <bsd.port.mk>
