#-*- mode: Fundamental; tab-width: 4; -*-
# ex:ts=4 sw=4 filetype=make:
# $OpenBSD: gnu.port.mk,v 1.2 2001/09/03 02:00:48 brad Exp $
#	Based on bsd.port.mk, originally by Jordan K. Hubbard.
#	This file is in the public domain.

# XXX - Kludge for these archictectures so we do not
#	have to patch all copies of config.guess
#	throughout the ports tree.
.if ${MACHINE} == "macppc" || ${MACHINE} == "mvmeppc"
CONFIGURE_ARGS+=	--host=powerpc-unknown-openbsd${OPSYS_VER}
.endif

.if ${CONFIGURE_STYLE:L:Mdest}
CONFIGURE_ARGS+=	--prefix='$${${DESTDIRNAME}}${PREFIX}'
.else
CONFIGURE_ARGS+=	--prefix='${PREFIX}'
.endif

.if empty(CONFIGURE_STYLE:L:Mold)
.  if ${CONFIGURE_STYLE:L:Mdest}
CONFIGURE_ARGS+=	--sysconfdir='$${${DESTDIRNAME}}${SYSCONFDIR}'
.  else
CONFIGURE_ARGS+=	--sysconfdir='${SYSCONFDIR}'
.  endif
.endif
