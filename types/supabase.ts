export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

export interface Database {
  public: {
    Tables: {
      Tutorial: {
        Row: {
          created_at: string
          id: number
          image: string
          published: string | null
          title: string
          views: number
        }
        Insert: {
          created_at?: string
          id?: number
          image?: string
          published?: string | null
          title: string
          views?: number
        }
        Update: {
          created_at?: string
          id?: number
          image?: string
          published?: string | null
          title?: string
          views?: number
        }
        Relationships: []
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      [_ in never]: never
    }
    Enums: {
      [_ in never]: never
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
}
