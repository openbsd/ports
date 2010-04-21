# $OpenBSD: Makefile,v 1.32 2010/04/21 07:23:58 giovanni Exp $

COMMENT-main=		mail delivery agent with filtering abilities
COMMENT-utils=		quota tools for the Courier mail suite

V=			2.4.3
DISTNAME=		maildrop-$V
PKGNAME-main=		maildrop-$V
FULLPKGNAME-utils=	courier-utils-$V
FULLPKGPATH-utils=	mail/maildrop,-utils
CATEGORIES=		mail

HOMEPAGE=		http://www.courier-mta.org/maildrop/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=courier/}
EXTRACT_SUFX=		.tar.bz2

FLAVORS=		postfix
FLAVOR?=

MULTI_PACKAGES=		-main -utils


# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="${CFLAGS:C/ *$//} -I${LOCALBASE}/include" \
			ac_cv_header_fam_h=no ac_cv_lib_fam_FAMOpen=no
MAKE_ENV=		INCLUDES="-I${LOCALBASE}/include"

SUBST_VARS=             MAILDROPCONF

CONFIGURE_ARGS=		--sysconfdir=${SYSCONFDIR}/courier \
			--with-etcdir=${SYSCONFDIR}/courier \
			--datadir=${PREFIX}/share/doc \
			--enable-static \
			--with-db=gdbm \
			--enable-maildrop-gid=_courier \
			--enable-maildrop-uid=_courier \
			--enable-syslog=1 \
			--enable-restrict-trusted=1 \
			--enable-keep-fromline=1 \
			--enable-use-flock=1 \
			--enable-use-dotlock=1 \
			--enable-authlib \
			--with-dirsync \
			--enable-maildirquota \
			--with-default-maildrop="./Maildir"

DOCFILES=		${WRKSRC}/README \
			${WRKSRC}/INSTALL \
			${WRKSRC}/UPGRADE \
			${WRKSRC}/README.postfix \
			${WRKSRC}/maildroptips.txt \
			${WRKSRC}/maildir/README.sharedfolders.txt \
			${WRKSRC}/maildir/README.maildirquota.txt \
			${WRKSRC}/maildir/quotawarnmsg


.if ${FLAVOR:L:Mpostfix}
CONFIGURE_ARGS+=	--enable-sendmail=/usr/local/sbin/sendmail
CONFIGURE_ARGS+=	--enable-trusted-users="root _courier _postfix"
CONFIGURE_ARGS+=	--enable-trusted-groups="wheel _courier _postdrop"
RUN_DEPENDS=		::mail/postfix/stable
.else
CONFIGURE_ARGS+=	--enable-sendmail=/usr/sbin/sendmail
CONFIGURE_ARGS+=	--enable-trusted-users="root _courier"
CONFIGURE_ARGS+=	--enable-trusted-groups="wheel _courier"
.endif

WANTLIB-utils=		c

WANTLIB-main=		c gdbm m stdc++
LIB_DEPENDS-main=	gdbm.>=3::databases/gdbm \
			pcre.>=1::devel/pcre \
			courierauth::mail/courier-authlib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/maildrop
	@for i in ${DOCFILES}; do \
	    if [ -f $$i ]; then \
		${INSTALL_DATA} $$i ${PREFIX}/share/doc/maildrop ;\
	    fi \
	done
	${INSTALL_DATA} ${WRKSRC}/unicode/README \
	    ${PREFIX}/share/doc/maildrop/README.unicode.txt
	@sed -e s#!!PREFIX!!#${TRUEPREFIX}#g ${FILESDIR}/SECURITY > \
		${WRKBUILD}/SECURITY
	${INSTALL_DATA} ${WRKBUILD}/SECURITY \
	    ${PREFIX}/share/doc/maildrop/

.include <bsd.port.mk>
